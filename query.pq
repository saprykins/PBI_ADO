let
    Source = OData.Feed("https://analytics.dev.azure.com/go-gl-pr-migfactory-axa365/migration_factory/_odata/v3.0-preview/WorkItems?%24orderby=CreatedDate+desc&%24select=WorkItemId%2CTitle%2CWorkItemType%2CState%2CCustom_Entity%2CCustom_Wave%2CCreatedDate%2CChangedDate%2C+ParentWorkItemId%2C+Custom_PlannedStartDate%2C+Custom_PlannedEndDate%2C+Custom_MigrationStartDate%2C+Custom_MigrationEndDate%2C+Custom_ServerCount%2C+AreaSK%2C+IterationSK%2C+AssignedToUserSK%2CTagNames&%24filter=WorkItemType+eq+%27Application%27", null, [Implementation="2.0"]),
    #"Replaced Value" = Table.ReplaceValue(Source,"Sign-off","Sign-Off",Replacer.ReplaceText,{"State"})
in
    Source
