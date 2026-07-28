import AutomorphismGroupsComplexSpacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismGroupsComplexSpacesCanonicalLaneLean

structure ComplexDomain where
  carrier : Type
  topology : TopologicalSpace carrier
  complexAtlas : Prop

default instance : Inhabited ComplexDomain := ⟨{ carrier := Unit, topology := inferInstance, complexAtlas := True }⟩

structure ComplexAutomorphismObject where
  domain : ComplexDomain
  boundedSymmetric : Prop
  hermitianMetric : Prop
  automorphismGroupCompact : Prop
  conclusion : automorphismGroupCompact

def ComplexAutomorphismWitnessClosed (O : ComplexAutomorphismObject) : Prop :=
  O.automorphismGroupCompact

end AutomorphismGroupsComplexSpacesCanonicalLaneLean
end HautevilleHouse