import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveFunctionsCanonicalLaneLean

structure SchrodingerEquationPackage where
  hamiltonian : Type u
  stateSpace : Type v
  timeEvolution : ℕ → ℝ → stateSpace → stateSpace
  schrodingerEquation : Prop
  unitaryEvolution : Prop
  linearity : Prop

structure SchrodingerEquationEvidence (S : SchrodingerEquationPackage) where
  schrodingerEquationClosed : S.schrodingerEquation
  unitaryEvolutionClosed : S.unitaryEvolution
  linearityClosed : S.linearity

def SchrodingerEquationClosed (S : SchrodingerEquationPackage) : Prop :=
  S.schrodingerEquation ∧ S.unitaryEvolution ∧ S.linearity

theorem schrodinger_equation_closed_from_evidence (S : SchrodingerEquationPackage) (E : SchrodingerEquationEvidence S) :
    SchrodingerEquationClosed S := by
  exact And.intro E.schrodingerEquationClosed (And.intro E.unitaryEvolutionClosed E.linearityClosed)

end WaveFunctionsCanonicalLaneLean
end HautevilleHouse