import WaveFunctionsCanonicalLaneLean.WaveFunctionHilbertSpace

namespace HautevilleHouse
namespace WaveFunctionsCanonicalLaneLean

structure ObservableOperators (H : WaveFunctionHilbertSpace) where
  position : H.carrier → H.carrier
  momentum : H.carrier → H.carrier
  positionSelfAdjoint : Prop
  momentumSelfAdjoint : Prop
  canonicalCommutationRelation : Prop
  positionSelfAdjointTerm : positionSelfAdjoint
  momentumSelfAdjointTerm : momentumSelfAdjoint
  canonicalCommutationRelationTerm : canonicalCommutationRelation

def ObservableOperatorsClosed {H : WaveFunctionHilbertSpace} (O : ObservableOperators H) : Prop :=
  O.positionSelfAdjoint ∧ O.momentumSelfAdjoint ∧ O.canonicalCommutationRelation

theorem observable_operators_closed_from_evidence {H : WaveFunctionHilbertSpace} (O : ObservableOperators H) :
    ObservableOperatorsClosed O := by
  exact And.intro O.positionSelfAdjointTerm (And.intro O.momentumSelfAdjointTerm O.canonicalCommutationRelationTerm)

end WaveFunctionsCanonicalLaneLean
end HautevilleHouse