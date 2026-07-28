import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AutomorphismGroupsComplexSpacesCanonicalLaneLean.ComplexSpace
import HautevilleHouse.AutomorphismGroupsComplexSpacesCanonicalLaneLean.AutomorphismGroup

namespace HautevilleHouse
namespace AutomorphismGroupsComplexSpacesCanonicalLaneLean

structure FixedPoint (X : ComplexSpace) (G : AutomorphismGroup X) where
  point : X.carrier
  fixedByAll : ∀ (g : G.underlyingGroup), G.action g point = point

structure FixedPointEvidence {X : ComplexSpace} {G : AutomorphismGroup X} (p : FixedPoint X G) where
  fixedByAllClosed : p.fixedByAll

def FixedPointClosed {X : ComplexSpace} {G : AutomorphismGroup X} (p : FixedPoint X G) : Prop :=
  p.fixedByAll

theorem fixed_point_closed_from_evidence {X : ComplexSpace} {G : AutomorphismGroup X} (p : FixedPoint X G) (E : FixedPointEvidence p) : FixedPointClosed p := by
  exact E.fixedByAllClosed

end AutomorphismGroupsComplexSpacesCanonicalLaneLean
end HautevilleHouse