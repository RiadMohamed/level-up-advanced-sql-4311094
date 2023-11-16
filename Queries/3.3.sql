select model.model, count(*) as TotalSales from sales
inner join inventory on sales.inventoryId = inventory.inventoryId
inner JOIN model on model.modelId = inventory.modelId
where model.EngineType = 'Electric'
Group by model
order by TotalSales desc