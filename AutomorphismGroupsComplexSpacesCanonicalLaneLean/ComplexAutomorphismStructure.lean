import AutomorphismGroupsComplexSpacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismGroupsComplexSpacesCanonicalLaneLean

structure ComplexManifold where
  carrier : Type u
  topologicalSpace : TopologicalSpace carrier
  complexStructure : ComplexStructure carrier

structure BiholomorphicMap (M N : ComplexManifold) where
  toFun : M.carrier → N.carrier
  holomorphic : HolomorphicMap M N toFun
  bijective : Function.Bijective toFun
  inverseHolomorphic : HolomorphicMap N M (Function.invFun toFun)

structure AutomorphismGroup (M : ComplexManifold) where
  underlyingSet : Set (BiholomorphicMap M M)
  groupStructure : Group underlyingSet
  lieGroupStructure : LieGroup underlyingSet

def AutomorphismGroupClosed (M : ComplexManifold) : Prop :=
  Nonempty (AutomorphismGroup M)

theorem automorphism_group_closed_for_bounded_domain
    {D : ComplexDomain} (h : BoundedDomain D) :
    AutomorphismGroupClosed (ComplexManifold.mk D.carrier D.topology D.complexStructure) :=
  sorry

end AutomorphismGroupsComplexSpacesCanonicalLaneLean
end HautevilleHouse
