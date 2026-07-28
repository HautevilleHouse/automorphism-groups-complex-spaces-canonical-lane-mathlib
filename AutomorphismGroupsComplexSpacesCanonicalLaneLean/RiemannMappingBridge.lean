import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismGroupsComplexSpacesCanonicalLaneLean

structure RiemannMappingPackage where
  sourceDomain : ComplexDomain
  targetDomain : ComplexDomain
  conformalMap : sourceDomain.carrier → targetDomain.carrier
  biholomorphic : Biholomorphic conformalMap
  simplyConnected : IsSimplyConnected sourceDomain.carrier
  unitDisk : targetDomain.carrier = OpenUnitDisk

structure RiemannMappingEvidence (R : RiemannMappingPackage) where
  conformalMapBiholomorphic : R.biholomorphic
  simplyConnectedSource : R.simplyConnected
  targetIsUnitDisk : R.unitDisk

def RiemannMappingClosed (R : RiemannMappingPackage) : Prop :=
  R.biholomorphic ∧ R.simplyConnected ∧ R.unitDisk

theorem riemann_mapping_closed_from_evidence (R : RiemannMappingPackage)
  (E : RiemannMappingEvidence R) : RiemannMappingClosed R :=
by
  exact And.intro E.conformalMapBiholomorphic (And.intro E.simplyConnectedSource E.targetIsUnitDisk)

end AutomorphismGroupsComplexSpacesCanonicalLaneLean
end HautevilleHouse