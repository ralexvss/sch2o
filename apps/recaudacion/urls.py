from django.urls import path
from .views import LecturaDetalleList, RecaudacionList, recaudacion, RecaudacionCreate, plantilla, informe_caja_global, informe_caja_individual, ConsultarPlanilla
from .pdf import panilla_cobrada_pdf, ReportePlanillaPDF
from .reportes_pdf import planilla_recaudada, informe_caja_pdf
from .excel import *
urlpatterns = [
    path('recaudaciones/', LecturaDetalleList.as_view(),
         name='lectura_detalle_list'),
    path('consulta/planilla', ConsultarPlanilla.as_view(),
         name='consultar_planilla'),
    path('recaudaciones/cobradas/',
         RecaudacionList.as_view(), name='recaudacion_list'),
    path('recaudaciones/create/<int:catastro_id>/',
         recaudacion, name='recaudacion_create'),
    path('recaudaciones/update/<int:recaudacion_id>/',
         recaudacion, name='recaudacion_update'),
    path('recaudaciones/new/', RecaudacionCreate.as_view(),
         name='recaudacion_create_r'),
    path('recaudaciones/reportes/recaudar/',
         panilla_cobrada_pdf, name='planilla_cobrada_pdf'),
    path('recaudaciones/reportes/planillas',
         ReportePlanillaPDF.as_view(), name='planilla_print_all'),
    path('recaudaciones/reportes/planillas/<int:pk>/',
         ReportePlanillaPDF.as_view(), name='planilla_print_one'),
    path('recaudaciones/excel/cobrado/',
         planilla_cobrada_csv, name='planilla_cobrada_csv'),
    path('recaudaciones/pdf/cobrado/<int:id>/',
         plantilla, name='planilla_cobrada_pdf'),
    path('recaudaciones/pdf/caja/', informe_caja_pdf, name='informe_caja_pdf'),
    path('planilla/<int:pk>/', planilla_recaudada, name='planilla_recaudada'),

    path('informes/caja/', informe_caja_global, name='informe_caja_global'),
    path('informes/caja/individual/', informe_caja_individual,
         name='informe_caja_individual'),
]
