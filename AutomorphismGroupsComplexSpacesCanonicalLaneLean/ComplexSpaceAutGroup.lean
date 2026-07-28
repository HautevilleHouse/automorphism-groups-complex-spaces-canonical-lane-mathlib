import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismGroupsComplexSpacesCanonicalLaneLean

structure ComplexDomain where
  carrier : Type u
  topology : TopologicalSpace carrier
  complexStructure : ComplexStructure carrier

structure AutomorphismGroup (X : ComplexDomain) where
  elements : Set (X.carrier → X.carrier)
  biholomorphic : ∀ f ∈ elements, Biholomorphic f
  groupStructure : Group elements

def automorphismGroupClosed (X : ComplexDomain) (G : AutomorphismGroup X) : Prop :=
  ∀ f ∈ G.elements, Biholomorphic f

theorem automorphism_group_closed_from_elements (X : ComplexDomain) (G : AutomorphismGroup X) :
  automorphismGroupClosed X G :=
by
  intro f hf
  exact G.biholomorphic f hf

end AutomorphismGroupsComplexSpacesCanonicalLaneLean
end HautevilleHouse