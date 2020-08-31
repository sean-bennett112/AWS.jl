# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: managedblockchain

using Compat
using UUIDs
"""
    CreateMember()

Creates a member within a Managed Blockchain network.

# Required Parameters
- `ClientRequestToken`: A unique, case-sensitive identifier that you provide to ensure the idempotency of the operation. An idempotent operation completes no more than one time. This identifier is required only if you make a service request directly using an HTTP client. It is generated automatically if you use an AWS SDK or the AWS CLI.
- `InvitationId`: The unique identifier of the invitation that is sent to the member to join the network.
- `MemberConfiguration`: Member configuration parameters.
- `networkId`: The unique identifier of the network in which the member is created.

"""

create_member(ClientRequestToken, InvitationId, MemberConfiguration, networkId; aws_config::AWSConfig=global_aws_config()) = managedblockchain("POST", "/networks/$(networkId)/members", Dict{String, Any}("ClientRequestToken"=>ClientRequestToken, "InvitationId"=>InvitationId, "MemberConfiguration"=>MemberConfiguration); aws_config=aws_config)
create_member(ClientRequestToken, InvitationId, MemberConfiguration, networkId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = managedblockchain("POST", "/networks/$(networkId)/members", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ClientRequestToken"=>ClientRequestToken, "InvitationId"=>InvitationId, "MemberConfiguration"=>MemberConfiguration), args)); aws_config=aws_config)

"""
    CreateNetwork()

Creates a new blockchain network using Amazon Managed Blockchain.

# Required Parameters
- `ClientRequestToken`: A unique, case-sensitive identifier that you provide to ensure the idempotency of the operation. An idempotent operation completes no more than one time. This identifier is required only if you make a service request directly using an HTTP client. It is generated automatically if you use an AWS SDK or the AWS CLI.
- `Framework`: The blockchain framework that the network uses.
- `FrameworkVersion`: The version of the blockchain framework that the network uses.
- `MemberConfiguration`: Configuration properties for the first member within the network.
- `Name`: The name of the network.
- `VotingPolicy`:  The voting rules used by the network to determine if a proposal is approved. 

# Optional Parameters
- `Description`: An optional description for the network.
- `FrameworkConfiguration`:  Configuration properties of the blockchain framework relevant to the network configuration. 
"""

create_network(ClientRequestToken, Framework, FrameworkVersion, MemberConfiguration, Name, VotingPolicy; aws_config::AWSConfig=global_aws_config()) = managedblockchain("POST", "/networks", Dict{String, Any}("ClientRequestToken"=>ClientRequestToken, "Framework"=>Framework, "FrameworkVersion"=>FrameworkVersion, "MemberConfiguration"=>MemberConfiguration, "Name"=>Name, "VotingPolicy"=>VotingPolicy); aws_config=aws_config)
create_network(ClientRequestToken, Framework, FrameworkVersion, MemberConfiguration, Name, VotingPolicy, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = managedblockchain("POST", "/networks", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ClientRequestToken"=>ClientRequestToken, "Framework"=>Framework, "FrameworkVersion"=>FrameworkVersion, "MemberConfiguration"=>MemberConfiguration, "Name"=>Name, "VotingPolicy"=>VotingPolicy), args)); aws_config=aws_config)

"""
    CreateNode()

Creates a peer node in a member.

# Required Parameters
- `ClientRequestToken`: A unique, case-sensitive identifier that you provide to ensure the idempotency of the operation. An idempotent operation completes no more than one time. This identifier is required only if you make a service request directly using an HTTP client. It is generated automatically if you use an AWS SDK or the AWS CLI.
- `NodeConfiguration`: The properties of a node configuration.
- `memberId`: The unique identifier of the member that owns this node.
- `networkId`: The unique identifier of the network in which this node runs.

"""

create_node(ClientRequestToken, NodeConfiguration, memberId, networkId; aws_config::AWSConfig=global_aws_config()) = managedblockchain("POST", "/networks/$(networkId)/members/$(memberId)/nodes", Dict{String, Any}("ClientRequestToken"=>ClientRequestToken, "NodeConfiguration"=>NodeConfiguration); aws_config=aws_config)
create_node(ClientRequestToken, NodeConfiguration, memberId, networkId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = managedblockchain("POST", "/networks/$(networkId)/members/$(memberId)/nodes", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ClientRequestToken"=>ClientRequestToken, "NodeConfiguration"=>NodeConfiguration), args)); aws_config=aws_config)

"""
    CreateProposal()

Creates a proposal for a change to the network that other members of the network can vote on, for example, a proposal to add a new member to the network. Any member can create a proposal.

# Required Parameters
- `Actions`: The type of actions proposed, such as inviting a member or removing a member. The types of Actions in a proposal are mutually exclusive. For example, a proposal with Invitations actions cannot also contain Removals actions.
- `ClientRequestToken`: A unique, case-sensitive identifier that you provide to ensure the idempotency of the operation. An idempotent operation completes no more than one time. This identifier is required only if you make a service request directly using an HTTP client. It is generated automatically if you use an AWS SDK or the AWS CLI.
- `MemberId`: The unique identifier of the member that is creating the proposal. This identifier is especially useful for identifying the member making the proposal when multiple members exist in a single AWS account.
- `networkId`:  The unique identifier of the network for which the proposal is made.

# Optional Parameters
- `Description`: A description for the proposal that is visible to voting members, for example, \"Proposal to add Example Corp. as member.\"
"""

create_proposal(Actions, ClientRequestToken, MemberId, networkId; aws_config::AWSConfig=global_aws_config()) = managedblockchain("POST", "/networks/$(networkId)/proposals", Dict{String, Any}("Actions"=>Actions, "ClientRequestToken"=>ClientRequestToken, "MemberId"=>MemberId); aws_config=aws_config)
create_proposal(Actions, ClientRequestToken, MemberId, networkId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = managedblockchain("POST", "/networks/$(networkId)/proposals", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Actions"=>Actions, "ClientRequestToken"=>ClientRequestToken, "MemberId"=>MemberId), args)); aws_config=aws_config)

"""
    DeleteMember()

Deletes a member. Deleting a member removes the member and all associated resources from the network. DeleteMember can only be called for a specified MemberId if the principal performing the action is associated with the AWS account that owns the member. In all other cases, the DeleteMember action is carried out as the result of an approved proposal to remove a member. If MemberId is the last member in a network specified by the last AWS account, the network is deleted also.

# Required Parameters
- `memberId`: The unique identifier of the member to remove.
- `networkId`: The unique identifier of the network from which the member is removed.

"""

delete_member(memberId, networkId; aws_config::AWSConfig=global_aws_config()) = managedblockchain("DELETE", "/networks/$(networkId)/members/$(memberId)"; aws_config=aws_config)
delete_member(memberId, networkId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = managedblockchain("DELETE", "/networks/$(networkId)/members/$(memberId)", args; aws_config=aws_config)

"""
    DeleteNode()

Deletes a peer node from a member that your AWS account owns. All data on the node is lost and cannot be recovered.

# Required Parameters
- `memberId`: The unique identifier of the member that owns this node.
- `networkId`: The unique identifier of the network that the node belongs to.
- `nodeId`: The unique identifier of the node.

"""

delete_node(memberId, networkId, nodeId; aws_config::AWSConfig=global_aws_config()) = managedblockchain("DELETE", "/networks/$(networkId)/members/$(memberId)/nodes/$(nodeId)"; aws_config=aws_config)
delete_node(memberId, networkId, nodeId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = managedblockchain("DELETE", "/networks/$(networkId)/members/$(memberId)/nodes/$(nodeId)", args; aws_config=aws_config)

"""
    GetMember()

Returns detailed information about a member.

# Required Parameters
- `memberId`: The unique identifier of the member.
- `networkId`: The unique identifier of the network to which the member belongs.

"""

get_member(memberId, networkId; aws_config::AWSConfig=global_aws_config()) = managedblockchain("GET", "/networks/$(networkId)/members/$(memberId)"; aws_config=aws_config)
get_member(memberId, networkId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = managedblockchain("GET", "/networks/$(networkId)/members/$(memberId)", args; aws_config=aws_config)

"""
    GetNetwork()

Returns detailed information about a network.

# Required Parameters
- `networkId`: The unique identifier of the network to get information about.

"""

get_network(networkId; aws_config::AWSConfig=global_aws_config()) = managedblockchain("GET", "/networks/$(networkId)"; aws_config=aws_config)
get_network(networkId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = managedblockchain("GET", "/networks/$(networkId)", args; aws_config=aws_config)

"""
    GetNode()

Returns detailed information about a peer node.

# Required Parameters
- `memberId`: The unique identifier of the member that owns the node.
- `networkId`: The unique identifier of the network to which the node belongs.
- `nodeId`: The unique identifier of the node.

"""

get_node(memberId, networkId, nodeId; aws_config::AWSConfig=global_aws_config()) = managedblockchain("GET", "/networks/$(networkId)/members/$(memberId)/nodes/$(nodeId)"; aws_config=aws_config)
get_node(memberId, networkId, nodeId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = managedblockchain("GET", "/networks/$(networkId)/members/$(memberId)/nodes/$(nodeId)", args; aws_config=aws_config)

"""
    GetProposal()

Returns detailed information about a proposal.

# Required Parameters
- `networkId`: The unique identifier of the network for which the proposal is made.
- `proposalId`: The unique identifier of the proposal.

"""

get_proposal(networkId, proposalId; aws_config::AWSConfig=global_aws_config()) = managedblockchain("GET", "/networks/$(networkId)/proposals/$(proposalId)"; aws_config=aws_config)
get_proposal(networkId, proposalId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = managedblockchain("GET", "/networks/$(networkId)/proposals/$(proposalId)", args; aws_config=aws_config)

"""
    ListInvitations()

Returns a listing of all invitations made on the specified network.

# Optional Parameters
- `maxResults`: The maximum number of invitations to return.
- `nextToken`: The pagination token that indicates the next set of results to retrieve.
"""

list_invitations(; aws_config::AWSConfig=global_aws_config()) = managedblockchain("GET", "/invitations"; aws_config=aws_config)
list_invitations(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = managedblockchain("GET", "/invitations", args; aws_config=aws_config)

"""
    ListMembers()

Returns a listing of the members in a network and properties of their configurations.

# Required Parameters
- `networkId`: The unique identifier of the network for which to list members.

# Optional Parameters
- `isOwned`: An optional Boolean value. If provided, the request is limited either to members that the current AWS account owns (true) or that other AWS accounts own (false). If omitted, all members are listed.
- `maxResults`: The maximum number of members to return in the request.
- `name`: The optional name of the member to list.
- `nextToken`: The pagination token that indicates the next set of results to retrieve.
- `status`: An optional status specifier. If provided, only members currently in this status are listed.
"""

list_members(networkId; aws_config::AWSConfig=global_aws_config()) = managedblockchain("GET", "/networks/$(networkId)/members"; aws_config=aws_config)
list_members(networkId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = managedblockchain("GET", "/networks/$(networkId)/members", args; aws_config=aws_config)

"""
    ListNetworks()

Returns information about the networks in which the current AWS account has members.

# Optional Parameters
- `framework`: An optional framework specifier. If provided, only networks of this framework type are listed.
- `maxResults`: The maximum number of networks to list.
- `name`: The name of the network.
- `nextToken`: The pagination token that indicates the next set of results to retrieve.
- `status`: An optional status specifier. If provided, only networks currently in this status are listed.
"""

list_networks(; aws_config::AWSConfig=global_aws_config()) = managedblockchain("GET", "/networks"; aws_config=aws_config)
list_networks(args::AbstractDict{String, Any}; aws_config::AWSConfig=global_aws_config()) = managedblockchain("GET", "/networks", args; aws_config=aws_config)

"""
    ListNodes()

Returns information about the nodes within a network.

# Required Parameters
- `memberId`: The unique identifier of the member who owns the nodes to list.
- `networkId`: The unique identifier of the network for which to list nodes.

# Optional Parameters
- `maxResults`: The maximum number of nodes to list.
- `nextToken`: The pagination token that indicates the next set of results to retrieve.
- `status`: An optional status specifier. If provided, only nodes currently in this status are listed.
"""

list_nodes(memberId, networkId; aws_config::AWSConfig=global_aws_config()) = managedblockchain("GET", "/networks/$(networkId)/members/$(memberId)/nodes"; aws_config=aws_config)
list_nodes(memberId, networkId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = managedblockchain("GET", "/networks/$(networkId)/members/$(memberId)/nodes", args; aws_config=aws_config)

"""
    ListProposalVotes()

Returns the listing of votes for a specified proposal, including the value of each vote and the unique identifier of the member that cast the vote.

# Required Parameters
- `networkId`:  The unique identifier of the network. 
- `proposalId`:  The unique identifier of the proposal. 

# Optional Parameters
- `maxResults`:  The maximum number of votes to return. 
- `nextToken`:  The pagination token that indicates the next set of results to retrieve. 
"""

list_proposal_votes(networkId, proposalId; aws_config::AWSConfig=global_aws_config()) = managedblockchain("GET", "/networks/$(networkId)/proposals/$(proposalId)/votes"; aws_config=aws_config)
list_proposal_votes(networkId, proposalId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = managedblockchain("GET", "/networks/$(networkId)/proposals/$(proposalId)/votes", args; aws_config=aws_config)

"""
    ListProposals()

Returns a listing of proposals for the network.

# Required Parameters
- `networkId`:  The unique identifier of the network. 

# Optional Parameters
- `maxResults`:  The maximum number of proposals to return. 
- `nextToken`:  The pagination token that indicates the next set of results to retrieve. 
"""

list_proposals(networkId; aws_config::AWSConfig=global_aws_config()) = managedblockchain("GET", "/networks/$(networkId)/proposals"; aws_config=aws_config)
list_proposals(networkId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = managedblockchain("GET", "/networks/$(networkId)/proposals", args; aws_config=aws_config)

"""
    RejectInvitation()

Rejects an invitation to join a network. This action can be called by a principal in an AWS account that has received an invitation to create a member and join a network.

# Required Parameters
- `invitationId`: The unique identifier of the invitation to reject.

"""

reject_invitation(invitationId; aws_config::AWSConfig=global_aws_config()) = managedblockchain("DELETE", "/invitations/$(invitationId)"; aws_config=aws_config)
reject_invitation(invitationId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = managedblockchain("DELETE", "/invitations/$(invitationId)", args; aws_config=aws_config)

"""
    UpdateMember()

Updates a member configuration with new parameters.

# Required Parameters
- `memberId`: The unique ID of the member.
- `networkId`: The unique ID of the Managed Blockchain network to which the member belongs.

# Optional Parameters
- `LogPublishingConfiguration`: Configuration properties for publishing to Amazon CloudWatch Logs.
"""

update_member(memberId, networkId; aws_config::AWSConfig=global_aws_config()) = managedblockchain("PATCH", "/networks/$(networkId)/members/$(memberId)"; aws_config=aws_config)
update_member(memberId, networkId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = managedblockchain("PATCH", "/networks/$(networkId)/members/$(memberId)", args; aws_config=aws_config)

"""
    UpdateNode()

Updates a node configuration with new parameters.

# Required Parameters
- `memberId`: The unique ID of the member that owns the node.
- `networkId`: The unique ID of the Managed Blockchain network to which the node belongs.
- `nodeId`: The unique ID of the node.

# Optional Parameters
- `LogPublishingConfiguration`: Configuration properties for publishing to Amazon CloudWatch Logs.
"""

update_node(memberId, networkId, nodeId; aws_config::AWSConfig=global_aws_config()) = managedblockchain("PATCH", "/networks/$(networkId)/members/$(memberId)/nodes/$(nodeId)"; aws_config=aws_config)
update_node(memberId, networkId, nodeId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = managedblockchain("PATCH", "/networks/$(networkId)/members/$(memberId)/nodes/$(nodeId)", args; aws_config=aws_config)

"""
    VoteOnProposal()

Casts a vote for a specified ProposalId on behalf of a member. The member to vote as, specified by VoterMemberId, must be in the same AWS account as the principal that calls the action.

# Required Parameters
- `Vote`:  The value of the vote. 
- `VoterMemberId`: The unique identifier of the member casting the vote. 
- `networkId`:  The unique identifier of the network. 
- `proposalId`:  The unique identifier of the proposal. 

"""

vote_on_proposal(Vote, VoterMemberId, networkId, proposalId; aws_config::AWSConfig=global_aws_config()) = managedblockchain("POST", "/networks/$(networkId)/proposals/$(proposalId)/votes", Dict{String, Any}("Vote"=>Vote, "VoterMemberId"=>VoterMemberId); aws_config=aws_config)
vote_on_proposal(Vote, VoterMemberId, networkId, proposalId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = managedblockchain("POST", "/networks/$(networkId)/proposals/$(proposalId)/votes", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Vote"=>Vote, "VoterMemberId"=>VoterMemberId), args)); aws_config=aws_config)