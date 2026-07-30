import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveFunctionsCanonicalLaneLean

structure SuperpositionPrinciplePackage where
  H : Type u
  addWaveFn : (H → ℂ) → (H → ℂ) → (H → ℂ)
  scalarMulWaveFn : ℂ → (H → ℂ) → (H → ℂ)
  linearity : Prop
  closureUnderAdd : Prop
  closureUnderScalar : Prop

structure SuperpositionPrincipleEvidence (S : SuperpositionPrinciplePackage) where
  linearityClosed : S.linearity
  closureUnderAddClosed : S.closureUnderAdd
  closureUnderScalarClosed : S.closureUnderScalar

def SuperpositionPrincipleClosed (S : SuperpositionPrinciplePackage) : Prop :=
  S.linearity ∧ S.closureUnderAdd ∧ S.closureUnderScalar

theorem superposition_principle_closed_from_evidence
    (S : SuperpositionPrinciplePackage) (E : SuperpositionPrincipleEvidence S) :
    SuperpositionPrincipleClosed S := by
  exact And.intro E.linearityClosed (And.intro E.closureUnderAddClosed E.closureUnderScalarClosed)

end WaveFunctionsCanonicalLaneLean
end HautevilleHouse