# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: schemas
using AWS.Compat
using AWS.UUIDs

"""
    CreateDiscoverer()

Creates a discoverer.

# Required Parameters
- `SourceArn`: The ARN of the event bus.

# Optional Parameters
- `Description`: A description for the discoverer.
- `tags`: Tags associated with the resource.
"""
create_discoverer(SourceArn; aws_config::AWSConfig=global_aws_config()) = schemas("POST", "/v1/discoverers", Dict{String, Any}("SourceArn"=>SourceArn); aws_config=aws_config)
create_discoverer(SourceArn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = schemas("POST", "/v1/discoverers", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("SourceArn"=>SourceArn), args)); aws_config=aws_config)

"""
    CreateRegistry()

Creates a registry.

# Required Parameters
- `registryName`: The name of the registry.

# Optional Parameters
- `Description`: A description of the registry to be created.
- `tags`: Tags to associate with the registry.
"""
create_registry(registryName; aws_config::AWSConfig=global_aws_config()) = schemas("POST", "/v1/registries/name/$(registryName)"; aws_config=aws_config)
create_registry(registryName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = schemas("POST", "/v1/registries/name/$(registryName)", args; aws_config=aws_config)

"""
    CreateSchema()

Creates a schema definition. Inactive schemas will be deleted after two years.

# Required Parameters
- `Content`: The source of the schema definition.
- `Type`: The type of schema.
- `registryName`: The name of the registry.
- `schemaName`: The name of the schema.

# Optional Parameters
- `Description`: A description of the schema.
- `tags`: Tags associated with the schema.
"""
create_schema(Content, Type, registryName, schemaName; aws_config::AWSConfig=global_aws_config()) = schemas("POST", "/v1/registries/name/$(registryName)/schemas/name/$(schemaName)", Dict{String, Any}("Content"=>Content, "Type"=>Type); aws_config=aws_config)
create_schema(Content, Type, registryName, schemaName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = schemas("POST", "/v1/registries/name/$(registryName)/schemas/name/$(schemaName)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Content"=>Content, "Type"=>Type), args)); aws_config=aws_config)

"""
    DeleteDiscoverer()

Deletes a discoverer.

# Required Parameters
- `discovererId`: The ID of the discoverer.

"""
delete_discoverer(discovererId; aws_config::AWSConfig=global_aws_config()) = schemas("DELETE", "/v1/discoverers/id/$(discovererId)"; aws_config=aws_config)
delete_discoverer(discovererId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = schemas("DELETE", "/v1/discoverers/id/$(discovererId)", args; aws_config=aws_config)

"""
    DeleteRegistry()

Deletes a Registry.

# Required Parameters
- `registryName`: The name of the registry.

"""
delete_registry(registryName; aws_config::AWSConfig=global_aws_config()) = schemas("DELETE", "/v1/registries/name/$(registryName)"; aws_config=aws_config)
delete_registry(registryName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = schemas("DELETE", "/v1/registries/name/$(registryName)", args; aws_config=aws_config)

"""
    DeleteResourcePolicy()

Delete the resource-based policy attached to the specified registry.

# Optional Parameters
- `registryName`: The name of the registry.
"""
delete_resource_policy(; aws_config::AWSConfig=global_aws_config()) = schemas("DELETE", "/v1/policy"; aws_config=aws_config)
delete_resource_policy(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = schemas("DELETE", "/v1/policy", args; aws_config=aws_config)

"""
    DeleteSchema()

Delete a schema definition.

# Required Parameters
- `registryName`: The name of the registry.
- `schemaName`: The name of the schema.

"""
delete_schema(registryName, schemaName; aws_config::AWSConfig=global_aws_config()) = schemas("DELETE", "/v1/registries/name/$(registryName)/schemas/name/$(schemaName)"; aws_config=aws_config)
delete_schema(registryName, schemaName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = schemas("DELETE", "/v1/registries/name/$(registryName)/schemas/name/$(schemaName)", args; aws_config=aws_config)

"""
    DeleteSchemaVersion()

Delete the schema version definition

# Required Parameters
- `registryName`: The name of the registry.
- `schemaName`: The name of the schema.
- `schemaVersion`: The version number of the schema

"""
delete_schema_version(registryName, schemaName, schemaVersion; aws_config::AWSConfig=global_aws_config()) = schemas("DELETE", "/v1/registries/name/$(registryName)/schemas/name/$(schemaName)/version/$(schemaVersion)"; aws_config=aws_config)
delete_schema_version(registryName, schemaName, schemaVersion, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = schemas("DELETE", "/v1/registries/name/$(registryName)/schemas/name/$(schemaName)/version/$(schemaVersion)", args; aws_config=aws_config)

"""
    DescribeCodeBinding()

Describe the code binding URI.

# Required Parameters
- `language`: The language of the code binding.
- `registryName`: The name of the registry.
- `schemaName`: The name of the schema.

# Optional Parameters
- `schemaVersion`: Specifying this limits the results to only this schema version.
"""
describe_code_binding(language, registryName, schemaName; aws_config::AWSConfig=global_aws_config()) = schemas("GET", "/v1/registries/name/$(registryName)/schemas/name/$(schemaName)/language/$(language)"; aws_config=aws_config)
describe_code_binding(language, registryName, schemaName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = schemas("GET", "/v1/registries/name/$(registryName)/schemas/name/$(schemaName)/language/$(language)", args; aws_config=aws_config)

"""
    DescribeDiscoverer()

Describes the discoverer.

# Required Parameters
- `discovererId`: The ID of the discoverer.

"""
describe_discoverer(discovererId; aws_config::AWSConfig=global_aws_config()) = schemas("GET", "/v1/discoverers/id/$(discovererId)"; aws_config=aws_config)
describe_discoverer(discovererId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = schemas("GET", "/v1/discoverers/id/$(discovererId)", args; aws_config=aws_config)

"""
    DescribeRegistry()

Describes the registry.

# Required Parameters
- `registryName`: The name of the registry.

"""
describe_registry(registryName; aws_config::AWSConfig=global_aws_config()) = schemas("GET", "/v1/registries/name/$(registryName)"; aws_config=aws_config)
describe_registry(registryName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = schemas("GET", "/v1/registries/name/$(registryName)", args; aws_config=aws_config)

"""
    DescribeSchema()

Retrieve the schema definition.

# Required Parameters
- `registryName`: The name of the registry.
- `schemaName`: The name of the schema.

# Optional Parameters
- `schemaVersion`: Specifying this limits the results to only this schema version.
"""
describe_schema(registryName, schemaName; aws_config::AWSConfig=global_aws_config()) = schemas("GET", "/v1/registries/name/$(registryName)/schemas/name/$(schemaName)"; aws_config=aws_config)
describe_schema(registryName, schemaName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = schemas("GET", "/v1/registries/name/$(registryName)/schemas/name/$(schemaName)", args; aws_config=aws_config)

"""
    ExportSchema()



# Required Parameters
- `registryName`: The name of the registry.
- `schemaName`: The name of the schema.
- `type`: 

# Optional Parameters
- `schemaVersion`: Specifying this limits the results to only this schema version.
"""
export_schema(registryName, schemaName, type; aws_config::AWSConfig=global_aws_config()) = schemas("GET", "/v1/registries/name/$(registryName)/schemas/name/$(schemaName)/export", Dict{String, Any}("type"=>type); aws_config=aws_config)
export_schema(registryName, schemaName, type, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = schemas("GET", "/v1/registries/name/$(registryName)/schemas/name/$(schemaName)/export", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("type"=>type), args)); aws_config=aws_config)

"""
    GetCodeBindingSource()

Get the code binding source URI.

# Required Parameters
- `language`: The language of the code binding.
- `registryName`: The name of the registry.
- `schemaName`: The name of the schema.

# Optional Parameters
- `schemaVersion`: Specifying this limits the results to only this schema version.
"""
get_code_binding_source(language, registryName, schemaName; aws_config::AWSConfig=global_aws_config()) = schemas("GET", "/v1/registries/name/$(registryName)/schemas/name/$(schemaName)/language/$(language)/source"; aws_config=aws_config)
get_code_binding_source(language, registryName, schemaName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = schemas("GET", "/v1/registries/name/$(registryName)/schemas/name/$(schemaName)/language/$(language)/source", args; aws_config=aws_config)

"""
    GetDiscoveredSchema()

Get the discovered schema that was generated based on sampled events.

# Required Parameters
- `Events`: An array of strings where each string is a JSON event. These are the events that were used to generate the schema. The array includes a single type of event and has a maximum size of 10 events.
- `Type`: The type of event.

"""
get_discovered_schema(Events, Type; aws_config::AWSConfig=global_aws_config()) = schemas("POST", "/v1/discover", Dict{String, Any}("Events"=>Events, "Type"=>Type); aws_config=aws_config)
get_discovered_schema(Events, Type, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = schemas("POST", "/v1/discover", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Events"=>Events, "Type"=>Type), args)); aws_config=aws_config)

"""
    GetResourcePolicy()

Retrieves the resource-based policy attached to a given registry.

# Optional Parameters
- `registryName`: The name of the registry.
"""
get_resource_policy(; aws_config::AWSConfig=global_aws_config()) = schemas("GET", "/v1/policy"; aws_config=aws_config)
get_resource_policy(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = schemas("GET", "/v1/policy", args; aws_config=aws_config)

"""
    ListDiscoverers()

List the discoverers.

# Optional Parameters
- `discovererIdPrefix`: Specifying this limits the results to only those discoverer IDs that start with the specified prefix.
- `limit`: 
- `nextToken`: The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.
- `sourceArnPrefix`: Specifying this limits the results to only those ARNs that start with the specified prefix.
"""
list_discoverers(; aws_config::AWSConfig=global_aws_config()) = schemas("GET", "/v1/discoverers"; aws_config=aws_config)
list_discoverers(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = schemas("GET", "/v1/discoverers", args; aws_config=aws_config)

"""
    ListRegistries()

List the registries.

# Optional Parameters
- `limit`: 
- `nextToken`: The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.
- `registryNamePrefix`: Specifying this limits the results to only those registry names that start with the specified prefix.
- `scope`: Can be set to Local or AWS to limit responses to your custom registries, or the ones provided by AWS.
"""
list_registries(; aws_config::AWSConfig=global_aws_config()) = schemas("GET", "/v1/registries"; aws_config=aws_config)
list_registries(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = schemas("GET", "/v1/registries", args; aws_config=aws_config)

"""
    ListSchemaVersions()

Provides a list of the schema versions and related information.

# Required Parameters
- `registryName`: The name of the registry.
- `schemaName`: The name of the schema.

# Optional Parameters
- `limit`: 
- `nextToken`: The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.
"""
list_schema_versions(registryName, schemaName; aws_config::AWSConfig=global_aws_config()) = schemas("GET", "/v1/registries/name/$(registryName)/schemas/name/$(schemaName)/versions"; aws_config=aws_config)
list_schema_versions(registryName, schemaName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = schemas("GET", "/v1/registries/name/$(registryName)/schemas/name/$(schemaName)/versions", args; aws_config=aws_config)

"""
    ListSchemas()

List the schemas.

# Required Parameters
- `registryName`: The name of the registry.

# Optional Parameters
- `limit`: 
- `nextToken`: The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.
- `schemaNamePrefix`: Specifying this limits the results to only those schema names that start with the specified prefix.
"""
list_schemas(registryName; aws_config::AWSConfig=global_aws_config()) = schemas("GET", "/v1/registries/name/$(registryName)/schemas"; aws_config=aws_config)
list_schemas(registryName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = schemas("GET", "/v1/registries/name/$(registryName)/schemas", args; aws_config=aws_config)

"""
    ListTagsForResource()

Get tags for resource.

# Required Parameters
- `resource-arn`: The ARN of the resource.

"""
list_tags_for_resource(resource_arn; aws_config::AWSConfig=global_aws_config()) = schemas("GET", "/tags/$(resource-arn)"; aws_config=aws_config)
list_tags_for_resource(resource_arn, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = schemas("GET", "/tags/$(resource-arn)", args; aws_config=aws_config)

"""
    PutCodeBinding()

Put code binding URI

# Required Parameters
- `language`: The language of the code binding.
- `registryName`: The name of the registry.
- `schemaName`: The name of the schema.

# Optional Parameters
- `schemaVersion`: Specifying this limits the results to only this schema version.
"""
put_code_binding(language, registryName, schemaName; aws_config::AWSConfig=global_aws_config()) = schemas("POST", "/v1/registries/name/$(registryName)/schemas/name/$(schemaName)/language/$(language)"; aws_config=aws_config)
put_code_binding(language, registryName, schemaName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = schemas("POST", "/v1/registries/name/$(registryName)/schemas/name/$(schemaName)/language/$(language)", args; aws_config=aws_config)

"""
    PutResourcePolicy()

The name of the policy.

# Required Parameters
- `Policy`: The resource-based policy.

# Optional Parameters
- `RevisionId`: The revision ID of the policy.
- `registryName`: The name of the registry.
"""
put_resource_policy(Policy; aws_config::AWSConfig=global_aws_config()) = schemas("PUT", "/v1/policy", Dict{String, Any}("Policy"=>Policy); aws_config=aws_config)
put_resource_policy(Policy, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = schemas("PUT", "/v1/policy", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Policy"=>Policy), args)); aws_config=aws_config)

"""
    SearchSchemas()

Search the schemas

# Required Parameters
- `keywords`: Specifying this limits the results to only schemas that include the provided keywords.
- `registryName`: The name of the registry.

# Optional Parameters
- `limit`: 
- `nextToken`: The token that specifies the next page of results to return. To request the first page, leave NextToken empty. The token will expire in 24 hours, and cannot be shared with other accounts.
"""
search_schemas(keywords, registryName; aws_config::AWSConfig=global_aws_config()) = schemas("GET", "/v1/registries/name/$(registryName)/schemas/search", Dict{String, Any}("keywords"=>keywords); aws_config=aws_config)
search_schemas(keywords, registryName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = schemas("GET", "/v1/registries/name/$(registryName)/schemas/search", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("keywords"=>keywords), args)); aws_config=aws_config)

"""
    StartDiscoverer()

Starts the discoverer

# Required Parameters
- `discovererId`: The ID of the discoverer.

"""
start_discoverer(discovererId; aws_config::AWSConfig=global_aws_config()) = schemas("POST", "/v1/discoverers/id/$(discovererId)/start"; aws_config=aws_config)
start_discoverer(discovererId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = schemas("POST", "/v1/discoverers/id/$(discovererId)/start", args; aws_config=aws_config)

"""
    StopDiscoverer()

Stops the discoverer

# Required Parameters
- `discovererId`: The ID of the discoverer.

"""
stop_discoverer(discovererId; aws_config::AWSConfig=global_aws_config()) = schemas("POST", "/v1/discoverers/id/$(discovererId)/stop"; aws_config=aws_config)
stop_discoverer(discovererId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = schemas("POST", "/v1/discoverers/id/$(discovererId)/stop", args; aws_config=aws_config)

"""
    TagResource()

Add tags to a resource.

# Required Parameters
- `resource-arn`: The ARN of the resource.
- `tags`: Tags associated with the resource.

"""
tag_resource(resource_arn, tags; aws_config::AWSConfig=global_aws_config()) = schemas("POST", "/tags/$(resource-arn)", Dict{String, Any}("tags"=>tags); aws_config=aws_config)
tag_resource(resource_arn, tags, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = schemas("POST", "/tags/$(resource-arn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tags"=>tags), args)); aws_config=aws_config)

"""
    UntagResource()

Removes tags from a resource.

# Required Parameters
- `resource-arn`: The ARN of the resource.
- `tagKeys`: Keys of key-value pairs.

"""
untag_resource(resource_arn, tagKeys; aws_config::AWSConfig=global_aws_config()) = schemas("DELETE", "/tags/$(resource-arn)", Dict{String, Any}("tagKeys"=>tagKeys); aws_config=aws_config)
untag_resource(resource_arn, tagKeys, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = schemas("DELETE", "/tags/$(resource-arn)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("tagKeys"=>tagKeys), args)); aws_config=aws_config)

"""
    UpdateDiscoverer()

Updates the discoverer

# Required Parameters
- `discovererId`: The ID of the discoverer.

# Optional Parameters
- `Description`: The description of the discoverer to update.
"""
update_discoverer(discovererId; aws_config::AWSConfig=global_aws_config()) = schemas("PUT", "/v1/discoverers/id/$(discovererId)"; aws_config=aws_config)
update_discoverer(discovererId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = schemas("PUT", "/v1/discoverers/id/$(discovererId)", args; aws_config=aws_config)

"""
    UpdateRegistry()

Updates a registry.

# Required Parameters
- `registryName`: The name of the registry.

# Optional Parameters
- `Description`: The description of the registry to update.
"""
update_registry(registryName; aws_config::AWSConfig=global_aws_config()) = schemas("PUT", "/v1/registries/name/$(registryName)"; aws_config=aws_config)
update_registry(registryName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = schemas("PUT", "/v1/registries/name/$(registryName)", args; aws_config=aws_config)

"""
    UpdateSchema()

Updates the schema definition Inactive schemas will be deleted after two years.

# Required Parameters
- `registryName`: The name of the registry.
- `schemaName`: The name of the schema.

# Optional Parameters
- `ClientTokenId`: The ID of the client token.
- `Content`: The source of the schema definition.
- `Description`: The description of the schema.
- `Type`: The schema type for the events schema.
"""
update_schema(registryName, schemaName; aws_config::AWSConfig=global_aws_config()) = schemas("PUT", "/v1/registries/name/$(registryName)/schemas/name/$(schemaName)", Dict{String, Any}("ClientTokenId"=>string(uuid4())); aws_config=aws_config)
update_schema(registryName, schemaName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = schemas("PUT", "/v1/registries/name/$(registryName)/schemas/name/$(schemaName)", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ClientTokenId"=>string(uuid4())), args)); aws_config=aws_config)
