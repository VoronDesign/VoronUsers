if "show_object" not in locals():
    from cq_server.ui import ui, show_object
from distutils.command.build import build

from click import option
import cadquery as cq

from collections import namedtuple
Dims = namedtuple('Dims', ['l', 'w', 't'])
CDims = namedtuple('CDims', ['d', 't'])
in2mm = lambda x: x*25.4


model_size = 300

s_magnetic_sticker_thickness = 2
s_pei_sheet_thickness = 0.8
s_crossbar_offset = 7.5


d_bed = {
    250: Dims(l=in2mm(10),w=in2mm(10),t=8),
    300: Dims(l=in2mm(12),w=in2mm(12),t=8),
    350: Dims(l=in2mm(14),w=in2mm(14),t=8),
}.get(model_size)
d_crossbar = {
    250: Dims(l=370,w=20,t=20),
    300: Dims(l=420,w=20,t=20),
    350: Dims(l=470,w=20,t=20),
}.get(model_size)
d_rearbar = {
    250: Dims(l=20,w=232,t=20),
    300: Dims(l=20,w=282,t=20),
    350: Dims(l=20,w=332,t=20),
}.get(model_size)

# 250x250
#   Front Bed Extrusion
#   * HFSB5-2020-370-AH185
#   Rear Bed Extrusion
#   * HFSB5-2020-232-LTP
#   Bed
#   * 10"x10"x8mm
# 300x300
#   Front Bed Extrusion
#   * HFSB5-2020-420-AH210
#   Rear Bed Extrusion
#   * HFSB5-2020-282-LTP
#   Bed
#   * 12"x12"x8mm
# 350x350
#   Front Bed Extrusion
#   * HFSB5-2020-470-AH235
#   Rear Bed Extrusion
#   * HFSB5-2020-332-LTP
#   Bed
#   * 14"x14"x8mm



build_plate = (
    cq.Workplane("XY")
    .box(
        length=d_bed.l,
        width=d_bed.w,
        height=d_bed.t,
        centered=(True,True,False)
    )
    .translate((
        0,
        0,
        -d_bed.t-s_magnetic_sticker_thickness-s_pei_sheet_thickness
    ))
)
magnetic_sticker = (
    cq.Workplane("XY")
    .box(
        length=d_bed.l,
        width=d_bed.w,
        height=s_magnetic_sticker_thickness,
        centered=(True,True,False)
    )
    .translate((
        0,
        0,
        -s_magnetic_sticker_thickness-s_pei_sheet_thickness
    ))
)
flex_sheet = (
    cq.Workplane("XY")
    .moveTo(-d_bed.w/2,-d_bed.l/2)
    .lineTo(-d_bed.w/2,d_bed.l/2)
    .lineTo(d_bed.w/2,d_bed.l/2)
    .lineTo(d_bed.w/2,-d_bed.l/2)
    .lineTo(d_bed.w/2-55,-d_bed.l/2)
    .lineTo(d_bed.w/2-63,-d_bed.l/2-15)
    .lineTo(d_bed.w/2-95,-d_bed.l/2-15)
    .lineTo(d_bed.w/2-103,-d_bed.l/2)
    .lineTo(-d_bed.w/2+103,-d_bed.l/2)
    .lineTo(-d_bed.w/2+95,-d_bed.l/2-15)
    .lineTo(-d_bed.w/2+63,-d_bed.l/2-15)
    .lineTo(-d_bed.w/2+55,-d_bed.l/2)
    .close()
    .extrude(s_pei_sheet_thickness-0.05)
    .translate((0,0,-s_pei_sheet_thickness))
)
cross_bar = (
    cq.Workplane("XY")
    .box(
        length=d_crossbar.l,
        width=d_crossbar.w,
        height=d_crossbar.t,
        centered=(True,False,False)
    )
    .translate((
        0,
        -d_bed.w/2+33,
        -s_pei_sheet_thickness
        -s_magnetic_sticker_thickness
        -d_bed.t
        -d_crossbar.t
        -s_crossbar_offset
    ))
)
rear_bar = (
    cq.Workplane("XY")
    .box(
        length=d_rearbar.l,
        width=d_rearbar.w,
        height=d_rearbar.t,
        centered=(True,False,False)
    )
    .translate((
        0,
        -d_bed.w/2+33+d_crossbar.w,
        -s_pei_sheet_thickness
        -s_magnetic_sticker_thickness
        -d_bed.t
        -d_crossbar.t
        -s_crossbar_offset
    ))
)
support_rod = (
    cq.Workplane("XY")
    .polygon(nSides=12,diameter=10,circumscribed=False)
    .extrude(s_crossbar_offset)
    .translate((
        0,
        0,
        -s_pei_sheet_thickness
        -s_magnetic_sticker_thickness
        -d_bed.t
        -s_crossbar_offset
    ))
)
support_rod_left = (
    support_rod
    .translate((
        -d_bed.w/2+7,
        -d_bed.l/2+33+d_crossbar.w/2,
        0
    ))
)
support_rod_right = (
    support_rod_left.mirror("YZ")
)
support_rod_rear = (
    support_rod
    .translate((
        0,
        d_bed.l/2-7,
        0
    ))
)

logo_graphic = (
    # logo from https://www.teamfdm.com/files/file/2-voron-design-logo/
    cq.importers.importDXF('voron_design_logo.dxf')
    .wires()
    .toPending()
    .extrude(1)
    .translate((-25,0,0))
    .rotate(
        (0,0,0),
        (1,0,0),
        90
    )
    # .rotate(
    #     (0,0,0),
    #     (0,0,1),
    #     45
    # )
    .translate((
        0,#-d_bed.w/2-30,
        d_bed.l/2+30,
        0
    ))

)

# logo_text = (
#     cq.importers.importDXF('voron_design_logo.dxf',include=["Text"])
#     .wires()
#     .toPending()
#     .extrude(1)
#     # .rotate(
#     #     (0,0,0,),
#     #     (0,0,1),
#     #     180
#     # )
# )


show_object(
    build_plate,
    name="build_plate",
    options=dict(color="gray",)
)
show_object(
    magnetic_sticker,
    name="magnetic_sticker",
    options=dict(color="black",)
)
show_object(
    flex_sheet,
    name="flex_sheet",
    options=dict(color=cq.Color(177/256,86/256,15/256)),
)
show_object(
    cross_bar,
    name="cross_bar",
    options=dict(color="black"),
)
show_object(
    rear_bar,
    name="rear_bar",
    options=dict(color="black"),
)
show_object(
    support_rod_left,
    name="support_rod_left",
    options=dict(color="gray"),
)
show_object(
    support_rod_right,
    name="support_rod_right",
    options=dict(color="gray"),
)
show_object(
    support_rod_rear,
    name="support_rod_rear",
    options=dict(color="gray"),
)
show_object(
    logo_graphic,
    name="logo_graphic",
    options=dict(color="red")
)
# show_object(
#     logo_text,
#     name="logo_text",
#     options=dict(color="Black")
# )


total_object = (
    build_plate
    .union(magnetic_sticker)
    .union(flex_sheet)
    .union(cross_bar)
    .union(rear_bar)
    .union(support_rod_left)
    .union(support_rod_right)
    .union(support_rod_rear)
    .union(logo_graphic)
)

cq.exporters.export(
    w=total_object,
    fname=f'voron_trident_{model_size}mm_bed_model.stl',
    tolerance=0.1,
    angularTolerance=0.1,
)

# cq.exporters.export(
#     cq.Compound.makeCompound(
#         map(
#             lambda x: x.val(),
#             [build_plate,magnetic_sticker]
#         )
#     ),
#     'trident_bed.3mf',
#     tolerance=0.1,
#     angularTolerance=0.1,
# )