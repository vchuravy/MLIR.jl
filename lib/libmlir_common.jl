# Automatically generated using Clang.jl


# Skipping MacroDefinition: DEFINE_C_API_STRUCT ( name , storage ) struct name { storage * ptr ; } ; typedef struct name name

struct MlirAffineExpr
    ptr::Ptr{Cvoid}
end

struct MlirAffineMap
    ptr::Ptr{Cvoid}
end

struct MlirDiagnostic
    ptr::Ptr{Cvoid}
end

@cenum MlirDiagnosticSeverity::UInt32 begin
    MlirDiagnosticError = 0
    MlirDiagnosticWarning = 1
    MlirDiagnosticNote = 2
    MlirDiagnosticRemark = 3
end


const MlirDiagnosticHandlerID = UInt64
const MlirDiagnosticHandler = Ptr{Cvoid}

struct MlirContext
    ptr::Ptr{Cvoid}
end

struct MlirDialect
    ptr::Ptr{Cvoid}
end

struct MlirOperation
    ptr::Ptr{Cvoid}
end

struct MlirOpPrintingFlags
    ptr::Ptr{Cvoid}
end

struct MlirBlock
    ptr::Ptr{Cvoid}
end

struct MlirRegion
    ptr::Ptr{Cvoid}
end

struct MlirAttribute
    ptr::Ptr{Cvoid}
end

struct MlirIdentifier
    ptr::Ptr{Cvoid}
end

struct MlirLocation
    ptr::Ptr{Cvoid}
end

struct MlirModule
    ptr::Ptr{Cvoid}
end

struct MlirType
    ptr::Ptr{Cvoid}
end

struct MlirValue
    ptr::Ptr{Cvoid}
end

struct MlirNamedAttribute
    name::MlirIdentifier
    attribute::MlirAttribute
end

struct MlirStringRef
    data::Cstring
    length::Csize_t
end

mutable struct MlirOperationState
    name::MlirStringRef
    location::MlirLocation
    nResults::intptr_t
    results::Ptr{MlirType}
    nOperands::intptr_t
    operands::Ptr{MlirValue}
    nRegions::intptr_t
    regions::Ptr{MlirRegion}
    nSuccessors::intptr_t
    successors::Ptr{MlirBlock}
    nAttributes::intptr_t
    attributes::Ptr{MlirNamedAttribute}
end

struct MlirPass
    ptr::Ptr{Cvoid}
end

struct MlirPassManager
    ptr::Ptr{Cvoid}
end

struct MlirOpPassManager
    ptr::Ptr{Cvoid}
end

# Skipping MacroDefinition: MLIR_CAPI_EXPORTED __attribute__ ( ( visibility ( "default" ) ) )

const MlirStringCallback = Ptr{Cvoid}

struct MlirLogicalResult
    value::Int8
end
