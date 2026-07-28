import AutomorphismGroupsComplexSpacesCanonicalLaneLean.ComplexAutomorphismStructure

namespace HautevilleHouse
namespace AutomorphismGroupsComplexSpacesCanonicalLaneLean

structure RiemannMappingTheoremPackage (D : ComplexDomain) where
  simplyConnected : SimplyConnected D.carrier
  properDomain : D.carrier ≠ Set.univ
  biholomorphicToUnitDisk : BiholomorphicMap (ComplexManifold.mk D.carrier D.topology D.complexStructure)
    (ComplexManifold.mk ℂ (by infer_instance) (by infer_instance))
  automorphismGroupIsomorphicPSL2R :
    AutomorphismGroup (ComplexManifold.mk D.carrier D.topology D.complexStructure) ≅
    AutomorphismGroup (ComplexManifold.mk ℂ (by infer_instance) (by infer_instance))

def RiemannMappingAutomorphismClosed (D : ComplexDomain) : Prop :=
  Nonempty (RiemannMappingTheoremPackage D)

theorem riemann_mapping_automorphism_for_simply_connected_domain
    (D : ComplexDomain) (hsc : SimplyConnected D.carrier) (hproper : D.carrier ≠ Set.univ) :
    RiemannMappingAutomorphismClosed D :=
  sorry

end AutomorphismGroupsComplexSpacesCanonicalLaneLean
end HautevilleHouse
