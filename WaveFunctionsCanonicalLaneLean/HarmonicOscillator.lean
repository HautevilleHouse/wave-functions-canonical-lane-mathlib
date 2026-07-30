import canonicalLaneMathlib.AdmissibleClass
import WaveFunctionsCanonicalLaneLean.SchrodingerEquation

namespace HautevilleHouse
namespace WaveFunctionsCanonicalLaneLean

structure HarmonicOscillatorPotential where
  frequency : ℝ
  potential : ℝ → ℝ
  quadraticForm : Prop
  potentialClosed : potential = fun (x : ℝ) => frequency^2 * x^2 / 2

structure HarmonicOscillatorPackage (S : WavefunctionSpace) extends
  SchrodingerEquationPackage S where
  potential : HarmonicOscillatorPotential
  groundStateEnergy : ℝ
  energyLevels : ℕ → ℝ
  groundStateWavefunction : S.points → ℂ
  groundStateExplicit : Prop
  energyLevelsExplicit : Prop

structure HarmonicOscillatorEvidence {S : WavefunctionSpace}
  (P : HarmonicOscillatorPackage S) where
  groundStateExplicitClosed : P.groundStateExplicit
  energyLevelsExplicitClosed : P.energyLevelsExplicit

del HarmonicOscillatorClosed {S : WavefunctionSpace}
  (P : HarmonicOscillatorPackage S) : Prop :=
  P.potential.potentialClosed ∧ P.groundStateExplicit ∧ P.energyLevelsExplicit

theorem harmonic_oscillator_closed_from_evidence {S : WavefunctionSpace}
  (P : HarmonicOscillatorPackage S) (E : HarmonicOscillatorEvidence P) :
  HarmonicOscillatorClosed P := by
  exact And.intro P.potential.potentialClosed
    (And.intro E.groundStateExplicitClosed E.energyLevelsExplicitClosed)

end WaveFunctionsCanonicalLaneLean
end HautevilleHouse