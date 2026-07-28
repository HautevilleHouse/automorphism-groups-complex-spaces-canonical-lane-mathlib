import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismGroupsComplexSpacesCanonicalLaneLean

structure ComplexSpacePackage where
  underlyingSpace : Type u
  topology : TopologicalSpace underlyingSpace
  complexStructure : Prop
  connected : Prop
  bounded : Prop
  automorphismGroup : Type v
  automorphismGroupTopology : TopologicalSpace automorphismGroup
  automorphismGroupIsLieGroup : Prop
  automorphismGroupActingByBiholomorphisms : Prop

structure ComplexSpaceEvidence (C : ComplexSpacePackage) where
  complexStructureClosed : C.complexStructure
  connectedClosed : C.connected
  boundedClosed : C.bounded
  automorphismGroupIsLieGroupClosed : C.automorphismGroupIsLieGroup
  automorphismGroupActingByBiholomorphismsClosed : C.automorphismGroupActingByBiholomorphisms

def ComplexSpaceClosed (C : ComplexSpacePackage) : Prop :=
  C.complexStructure ∧ C.connected ∧ C.bounded ∧ C.automorphismGroupIsLieGroup ∧ C.automorphismGroupActingByBiholomorphisms

theorem complex_space_closed_from_evidence (C : ComplexSpacePackage) (E : ComplexSpaceEvidence C) :
    ComplexSpaceClosed C := by
  exact And.intro E.complexStructureClosed
    (And.intro E.connectedClosed
      (And.intro E.boundedClosed
        (And.intro E.automorphismGroupIsLieGroupClosed E.automorphismGroupActingByBiholomorphismsClosed)))

end AutomorphismGroupsComplexSpacesCanonicalLaneLean
end HautevilleHouse
