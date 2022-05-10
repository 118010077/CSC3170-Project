### Schema

State_Abbr(<u>Postal(HRR)</u>, State_name)

State_CityList(<u>State</u>, <u>City</u>) 需要做拆分处理





State_ICU_Beds(<u>State</u>, Total ICU Beds, ICU Bed Occupancy Rate,  Available ICU Beds(), Potentially Available ICU Beds）

State_Total_Beds(<u>State</u>, Total Hospital Beds, Hospital Bed Occupancy Rate, Available Hospital Beds, Potentially Available Hospital Beds)

State_Population(<u>State</u>, Adult_Population, Population65+, Available Hospital Beds, Available ICU Beds) 在计算时调参数设置分摊病例时长（X_Month,简化模型，暂不考虑期间增加的病例人数) 和 感染比例

Projection_Data(<u>Percentage, state</u>,  Projected_Infected, Projected_Hospitalized, Projected_ICUed)



After "data analysis", we can get the following schema:



Bed_Needed(<u>state,month,percentage</u>, Hospital Beds Needed, ICU Beds Needed)

Available_Analysis(<u>state, month, percentage</u>, Percentage of Available ICU(), Percentage of Available Bed())

Total_Analysis(<u>state, month, percentage</u>,Percentage of Total Bed(), Percentage of Total ICU())

Potential_Analysis(<u>state, month, percentage</u>,  Potentially_Available Bed(), Potentially_Available ICU())



类似于state,但拆分为300多个城市...（State会重名）

City_ICU_Beds （<u>City, State</u>,Total ICU Beds, ICU Bed Occupancy Rate,  Available ICU Beds(), ICU Bed Needed）

City_Total_Beds ()

City_Population()



