from django.contrib import admin
from django.urls import path
from .views import *
urlpatterns = [
    path('city/availableAnalysis/', City_Available_Analysis, name="city_available"),
    path('city/potentialAnalysis/', City_Potential_Analysis),
    path('city/totalAnalysis/', City_Total_Analysis),
    path('city/population/', City_Population),
    path('city/projectionData/', City_Projection),
    path('city/totalBeds/', City_Total_Beds),
    path('city/icuBeds/', City_ICU_Beds),
    path('city/bedNeeded/', City_Bed_Needed),



    path('state/abbr', State_Abbr),
    path('state/citylist', State_CityList),
    path('state/icuBeds', State_ICU_Beds),
    path('state/totalBeds', State_Total_Beds),
    path('state/projection', State_Projection_Data),
    path('state/AvailableAnalysis', State_Available_Analysis),
    path('state/BedNeeded', State_Bed_Needed),
    path('state/TotalAnalysis', State_Total_Analysis),
    path('state/PotentialAnalysis', State_Potential_Analysis),
    path('state/population', State_Population)

]