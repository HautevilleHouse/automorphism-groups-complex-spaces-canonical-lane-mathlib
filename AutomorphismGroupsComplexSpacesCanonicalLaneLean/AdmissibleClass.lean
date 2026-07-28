import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismGroupsComplexSpacesCanonicalLaneLean

structure ComplexDomain where
  carrier : Type u
  topology : TopologicalSpace carrier
  complexStructure : ComplexStructure carrier

default instance : TopologicalSpace (ComplexDomain.carrier) := ComplexDomain.topology

structure AutomorphismAdmittedObject where
  domain : ComplexDomain
  boundedDomain : Prop
  automorphismGroupIsLie : Prop
  conclusion : automorphismGroupIsLie

structure AdmissibleClass where
  object : AutomorphismAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AutomorphismWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end AutomorphismGroupsComplexSpacesCanonicalLaneLean
end HautevilleHouse
