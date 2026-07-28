import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismGroupsComplexSpacesCanonicalLaneLean

structure ComplexSpacePackage where
  domain : Type u
  topology : TopologicalSpace domain
  complexStructure : Type v
  automorphismGroup : Type w
  isBounded : Prop
  isSymmetric : Prop

def AutGroupWitnessClosed (O : AutGroupAdmittedObject) : Prop :=
  O.automorphismGroupIdentified

structure AutGroupAdmittedObject where
  space : ComplexSpacePackage
  automorphismGroupIdentified : Prop
  conclusion : automorphismGroupIdentified

end AutomorphismGroupsComplexSpacesCanonicalLaneLean
end HautevilleHouse
