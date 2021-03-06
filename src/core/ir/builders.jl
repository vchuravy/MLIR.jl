# Builders for regions.
push!(r::Region, b::Block) = MLIR.API.mlirRegionAppendOwnedBlock(r, b)
push_block!(r::Region, b::Block) = push!(r, b)

# Builders for blocks.
push!(b::Block, op::Operation) = MLIR.API.mlirBlockAppendOwnedOperation(b, unwrap(op))
push_operation!(b::Block, op::Operation) = push!(b, op)

# Builders for state.
push!(state::OperationState, n::Int, results::Vector{Type}) = MLIR.API.mlirOperationStateAddResults(Ref(state), n, results)
push!(state::OperationState, n::Int, operands::Vector{Value}) = MLIR.API.mlirOperationStateAddOperands(Ref(state), n, operands)
push!(state::OperationState, n::Int, regions::Vector{Region}) = MLIR.API.mlirOperationStateAddOwnedRegions(Ref(state), n, regions)
push!(state::OperationState, n::Int, successors::Vector{Block}) = MLIR.API.mlirOperationStateAddSuccessors(Ref(state), n, successors)
push!(state::OperationState, n::Int, attrs::Vector{NamedAttribute}) = MLIR.API.mlirOperationStateAddAttributes(Ref(state), n, attrs)
push!(state::OperationState, args::Vector) = push!(state, length(args), args)
push!(state::OperationState, arg::T) where T = push!(state, T[arg])
