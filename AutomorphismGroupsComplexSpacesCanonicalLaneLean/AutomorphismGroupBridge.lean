import AutomorphismGroupsComplexSpacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismGroupsComplexSpacesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ComplexAutomorphismWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end AutomorphismGroupsComplexSpacesCanonicalLaneLean
end HautevilleHouse