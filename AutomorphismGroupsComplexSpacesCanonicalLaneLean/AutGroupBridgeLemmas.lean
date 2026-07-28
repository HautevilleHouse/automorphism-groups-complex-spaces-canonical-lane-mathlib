import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismGroupsComplexSpacesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AutGroupWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end AutomorphismGroupsComplexSpacesCanonicalLaneLean
end HautevilleHouse
