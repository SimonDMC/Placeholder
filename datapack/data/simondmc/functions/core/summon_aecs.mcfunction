# called by multiple functions, makes sure the areaeffectclouds teleporting you are alive
kill @e[tag=p1fall]
kill @e[tag=p2fall]
kill @e[tag=p3fall]
kill @e[tag=p4fall]
kill @e[tag=p5fall]
kill @e[tag=p6fall]
summon area_effect_cloud 0 0 0 {Tags:["p1fall"],Duration:2147483647}
summon area_effect_cloud 0 0 0 {Tags:["p2fall"],Duration:2147483647}
summon area_effect_cloud 0 0 0 {Tags:["p3fall"],Duration:2147483647}
summon area_effect_cloud 0 0 0 {Tags:["p4fall"],Duration:2147483647}
summon area_effect_cloud 0 0 0 {Tags:["p5fall"],Duration:2147483647}
summon area_effect_cloud 0 0 0 {Tags:["p6fall"],Duration:2147483647}