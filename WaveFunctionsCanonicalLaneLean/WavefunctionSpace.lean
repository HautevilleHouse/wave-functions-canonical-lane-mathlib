import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveFunctionsCanonicalLaneLean

structure WavefunctionSpace where
  points : Type u
  topology : TopologicalSpace points
  measure : Measure points
  hilbertSpace : HilbertSpace points
  normSquaredIntegrable : Prop

structure WavefunctionObject where
  space : WavefunctionSpace
  wavefunction : space.points → ℂ
  normOne : Prop
  squareIntegrable : Prop
  conclusion : squareIntegrable ∧ normOne

del WavefunctionWitnessClosed (O : WavefunctionObject) : Prop :=
  O.squareIntegrable ∧ O.normOne

end WaveFunctionsCanonicalLaneLean
end HautevilleHouse