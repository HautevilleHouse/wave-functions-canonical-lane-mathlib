import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveFunctionsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  WaveWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end WaveFunctionsCanonicalLaneLean
end HautevilleHouse