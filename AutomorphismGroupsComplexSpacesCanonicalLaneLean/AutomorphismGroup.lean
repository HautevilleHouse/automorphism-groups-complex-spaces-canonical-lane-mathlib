import canonicalLaneMathlib.AdmissibleClass
import AutomorphismGroupsComplexSpacesCanonicalLaneLean.ComplexSpace

namespace HautevilleHouse
namespace AutomorphismGroupsComplexSpacesCanonicalLaneLean

structure AutomorphismGroupPackage (C : ComplexSpacePackage) where
  groupCarrier : Type u
  groupTopology : TopologicalSpace groupCarrier
  groupLieStructure : Prop
  action : groupCarrier → C.underlyingSpace → C.underlyingSpace
  actionIsHolomorphic : Prop
  actionContinuous : Prop
  byBiholomorphisms : Prop

structure AutomorphismGroupEvidence {C : ComplexSpacePackage} (A : AutomorphismGroupPackage C) where
  groupLieStructureClosed : A.groupLieStructure
  actionIsHolomorphicClosed : A.actionIsHolomorphic
  actionContinuousClosed : A.actionContinuous
  byBiholomorphismsClosed : A.byBiholomorphisms

def AutomorphismGroupClosed {C : ComplexSpacePackage} (A : AutomorphismGroupPackage C) : Prop :=
  A.groupLieStructure ∧ A.actionIsHolomorphic ∧ A.actionContinuous ∧ A.byBiholomorphisms

theorem automorphism_group_closed_from_evidence {C : ComplexSpacePackage} (A : AutomorphismGroupPackage C)
    (E : AutomorphismGroupEvidence A) : AutomorphismGroupClosed A := by
  exact And.intro E.groupLieStructureClosed
    (And.intro E.actionIsHolomorphicClosed
      (And.intro E.actionContinuousClosed E.byBiholomorphismsClosed))

end AutomorphismGroupsComplexSpacesCanonicalLaneLean
end HautevilleHouse
