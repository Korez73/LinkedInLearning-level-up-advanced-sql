
select salesAmount, soldDate
from sales s
join inventory i ON s.inventoryId = i.inventoryId
where i.modelId IN (select modelId from model where EngineType = 'Electric')