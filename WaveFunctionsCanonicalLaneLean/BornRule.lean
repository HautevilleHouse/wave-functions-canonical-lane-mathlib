import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveFunctionsCanonicalLaneLean

structure BornRulePackage where
  H : Type u
  waveFunction : H → ℂ
  probabilityDensity : H → ℝ
  normalization : Prop
  positivity : Prop
  integrationYieldsOne : Prop

structure BornRuleEvidence (B : BornRulePackage) where
  normalizationClosed : B.normalization
  positivityClosed : B.positivity
  integrationYieldsOneClosed : B.integrationYieldsOne

def BornRuleClosed (B : BornRulePackage) : Prop :=
  B.normalization ∧ B.positivity ∧ B.integrationYieldsOne

theorem born_rule_closed_from_evidence
    (B : BornRulePackage) (E : BornRuleEvidence B) :
    BornRuleClosed B := by
  exact And.intro E.normalizationClosed (And.intro E.positivityClosed E.integrationYieldsOneClosed)

end WaveFunctionsCanonicalLaneLean
end HautevilleHouse