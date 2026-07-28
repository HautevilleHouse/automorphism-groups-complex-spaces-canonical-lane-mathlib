import AutomorphismGroupsComplexSpacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismGroupsComplexSpacesCanonicalLaneLean

structure RiemannMappingPackage (A : AdmissibleClass) where
  simplyConnectedDomain : Prop
  conformalMappingExists : Prop
  mappingIsBiholomorphic : Prop
  automorphismPreserved : Prop

structure RiemannMappingEvidence (A : AdmissibleClass) (P : RiemannMappingPackage A) where
  simplyConnectedDomainClosed : P.simplyConnectedDomain
  conformalMappingExistsClosed : P.conformalMappingExists
  mappingIsBiholomorphicClosed : P.mappingIsBiholomorphic
  automorphismPreservedClosed : P.automorphismPreserved

def RiemannMappingClosed (A : AdmissibleClass) (P : RiemannMappingPackage A) : Prop :=
  P.simplyConnectedDomain ∧ P.conformalMappingExists ∧ P.mappingIsBiholomorphic ∧ P.automorphismPreserved

theorem riemann_mapping_closed_from_evidence (A : AdmissibleClass) (P : RiemannMappingPackage A) (E : RiemannMappingEvidence A P) :
    RiemannMappingClosed A P := by
  exact And.intro E.simplyConnectedDomainClosed
    (And.intro E.conformalMappingExistsClosed
      (And.intro E.mappingIsBiholomorphicClosed E.automorphismPreservedClosed))

end AutomorphismGroupsComplexSpacesCanonicalLaneLean
end HautevilleHouse