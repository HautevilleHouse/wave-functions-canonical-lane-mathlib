import canonicalLaneMathlib.AdmissibleClass
import WaveFunctionsCanonicalLaneLean.WavefunctionSpace

namespace HautevilleHouse
namespace WaveFunctionsCanonicalLaneLean

structure ProbabilityDensity (S : WavefunctionSpace) where
  wavefunction : S.points → ℂ
  density : S.points → ℝ
  densityDefined : ∀ (x : S.points), density x = ∥wavefunction x∥^2
  normalization : ∫ x in S.measure, density x = 1
  nonnegative : ∀ x, density x ≥ 0

del ProbabilityDensityClosed (P : ProbabilityDensity S) : Prop :=
  P.densityDefined ∧ P.normalization ∧ P.nonnegative

structure ProbabilityDensityEvidence {S : WavefunctionSpace}
  (P : ProbabilityDensity S) where
  densityDefinedClosed : P.densityDefined
  normalizationClosed : P.normalization
  nonnegativeClosed : P.nonnegative

theorem probability_density_closed_from_evidence {S : WavefunctionSpace}
  (P : ProbabilityDensity S) (E : ProbabilityDensityEvidence P) :
  ProbabilityDensityClosed P := by
  exact And.intro E.densityDefinedClosed
    (And.intro E.normalizationClosed E.nonnegativeClosed)

structure ExpectationValue (S : WavefunctionSpace) (O : Observable S) where
  observable : O
  wavefunction : S.points → ℂ
  expectation : ℂ
  formula : expectation = ∫ x, (conj (wavefunction x)) * (O.operator wavefunction x) d S.measure
  realValued : expectation ∈ ℝ

del ExpectationValueClosed (E : ExpectationValue S O) : Prop :=
  E.formula ∧ E.realValued

end WaveFunctionsCanonicalLaneLean
end HautevilleHouse