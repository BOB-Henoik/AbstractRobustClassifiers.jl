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