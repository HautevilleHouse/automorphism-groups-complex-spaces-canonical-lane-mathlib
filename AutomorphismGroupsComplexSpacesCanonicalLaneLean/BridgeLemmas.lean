import AutomorphismGroupsComplexSpacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismGroupsComplexSpacesCanonicalLaneLean

def AutomorphismWitnessClosed (O : AutomorphismAdmittedObject) : Prop :=
  O.automorphismGroupIsLie

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AutomorphismWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end AutomorphismGroupsComplexSpacesCanonicalLaneLean
end HautevilleHouse
