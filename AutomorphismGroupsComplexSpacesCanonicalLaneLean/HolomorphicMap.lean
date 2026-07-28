import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AutomorphismGroupsComplexSpacesCanonicalLaneLean.ComplexSpace

namespace HautevilleHouse
namespace AutomorphismGroupsComplexSpacesCanonicalLaneLean

structure HolomorphicMap (X Y : ComplexSpace) where
  underlyingFunction : X.carrier → Y.carrier
  holomorphic : Prop

structure HolomorphicMapEvidence {X Y : ComplexSpace} (f : HolomorphicMap X Y) where
  holomorphicClosed : f.holomorphic

def HolomorphicMapClosed {X Y : ComplexSpace} (f : HolomorphicMap X Y) : Prop :=
  f.holomorphic

theorem holomorphic_map_closed_from_evidence {X Y : ComplexSpace} (f : HolomorphicMap X Y) (E : HolomorphicMapEvidence f) : HolomorphicMapClosed f := by
  exact E.holomorphicClosed

end AutomorphismGroupsComplexSpacesCanonicalLaneLean
end HautevilleHouse