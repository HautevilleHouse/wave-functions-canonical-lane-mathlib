import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveFunctionsCanonicalLaneLean

structure WaveFunctionSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure WaveAdmittedObject where
  space : WaveFunctionSpace
  hilbertSpace : Prop
  waveFunction : space.carrier
  normalization : Prop
  conclusion : normalization

structure WaveEndgameState where
  object : WaveAdmittedObject

def WaveWitnessClosed (O : WaveAdmittedObject) : Prop :=
  O.normalization

end WaveFunctionsCanonicalLaneLean
end HautevilleHouse