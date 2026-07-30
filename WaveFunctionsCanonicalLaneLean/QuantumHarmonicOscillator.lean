import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveFunctionsCanonicalLaneLean

structure QuantumHarmonicOscillatorPackage where
  mass : ℝ
  frequency : ℝ
  hbar : ℝ
  potential : ℝ → ℝ
  potentialClosed : ∀ x, potential x = 0.5 * mass * frequency^2 * x^2
  groundStateEnergy : ℝ
  groundStateEnergyClosed : groundStateEnergy = 0.5 * hbar * frequency
  waveFunctionNormalized : Prop
  waveFunctionBasis : Type u

structure QuantumHarmonicOscillatorEvidence (P : QuantumHarmonicOscillatorPackage) where
  potentialClosed : ∀ x, P.potential x = 0.5 * P.mass * P.frequency^2 * x^2
  groundStateEnergyClosed : P.groundStateEnergy = 0.5 * P.hbar * P.frequency
  waveFunctionNormalizedClosed : P.waveFunctionNormalized
  waveFunctionBasisClosed : Nonempty P.waveFunctionBasis

def QuantumHarmonicOscillatorClosed (P : QuantumHarmonicOscillatorPackage) : Prop :=
  (∀ x, P.potential x = 0.5 * P.mass * P.frequency^2 * x^2) ∧
  P.groundStateEnergy = 0.5 * P.hbar * P.frequency ∧
  P.waveFunctionNormalized ∧
  Nonempty P.waveFunctionBasis

theorem quantum_harmonic_oscillator_closed_from_evidence (P : QuantumHarmonicOscillatorPackage) (E : QuantumHarmonicOscillatorEvidence P) :
    QuantumHarmonicOscillatorClosed P := by
  exact And.intro E.potentialClosed
    (And.intro E.groundStateEnergyClosed
      (And.intro E.waveFunctionNormalizedClosed E.waveFunctionBasisClosed))

end WaveFunctionsCanonicalLaneLean
end HautevilleHouse