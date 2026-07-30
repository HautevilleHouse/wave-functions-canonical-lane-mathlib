import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveFunctionsCanonicalLaneLean

structure SchrodingerPDEPackage where
  timeParameter : Type u
  waveFunction : timeParameter -> Type v
  potentialFunction : timeParameter -> Type w
  initialCondition : Prop
  linearEvolution : Prop
  unitaryPropagation : Prop

structure SchrodingerPDEEvidence (S : SchrodingerPDEPackage) where
  initialConditionClosed : S.initialCondition
  linearEvolutionClosed : S.linearEvolution
  unitaryPropagationClosed : S.unitaryPropagation

def SchrodingerPDEClosed (S : SchrodingerPDEPackage) : Prop :=
  S.initialCondition ∧ S.linearEvolution ∧ S.unitaryPropagation

theorem schrodinger_pde_closed_from_evidence (S : SchrodingerPDEPackage)
    (E : SchrodingerPDEEvidence S) : SchrodingerPDEClosed S := by
  exact And.intro E.initialConditionClosed
    (And.intro E.linearEvolutionClosed E.unitaryPropagationClosed)

end WaveFunctionsCanonicalLaneLean
end HautevilleHouse