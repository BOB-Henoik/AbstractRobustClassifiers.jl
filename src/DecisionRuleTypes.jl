using MLJModelInterface

abstract type AbstractDecisionRule end

struct IntervalDominance <: AbstractDecisionRule end
struct Maximality <: AbstractDecisionRule end
struct EAdmissibility <: AbstractDecisionRule end
struct GammaMaxiMax <: AbstractDecisionRule end
struct GammaMaxiMin <: AbstractDecisionRule end
struct Hurwicz <: AbstractDecisionRule
    lambda::Float64
    function Hurwicz(lambda::Float64)
        @assert 0 < lambda < 1
        new(lambda) 
    end
end

const DecisionRuleTypes = Union{IntervalDominance, Maximality, EAdmissibility, GammaMaxiMax, GammaMaxiMin, Hurwicz}

function predict end

predict(::Model, ::DecisionRuleTypes, x) = (nothing)

function compute_dominance_matrix end

compute_dominance_matrix(::Model, ::DecisionRuleTypes, x) = (nothing)