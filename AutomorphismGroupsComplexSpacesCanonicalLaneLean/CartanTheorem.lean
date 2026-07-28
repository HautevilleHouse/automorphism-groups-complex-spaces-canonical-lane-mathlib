import AutomorphismGroupsComplexSpacesCanonicalLaneLean.ComplexAutomorphismStructure

namespace HautevilleHouse
namespace AutomorphismGroupsComplexSpacesCanonicalLaneLean

structure CartanTheoremPackage (D : ComplexDomain) where
  boundedDomain : D.boundedDomain
  automorphismGroup : AutomorphismGroup (ComplexManifold.mk D.carrier D.topology D.complexStructure)
  isLieGroup : LieGroup (automorphismGroup.underlyingSet)
  properAction : ProperActionOnSet (automorphismGroup.underlyingSet) D.carrier

def CartanTheoremClosed (D : ComplexDomain) : Prop :=
  Nonempty (CartanTheoremPackage D)

theorem cartan_theorem_for_bounded_domain (D : ComplexDomain) (h : D.boundedDomain) :
    CartanTheoremClosed D :=
  sorry

end AutomorphismGroupsComplexSpacesCanonicalLaneLean
end HautevilleHouse
