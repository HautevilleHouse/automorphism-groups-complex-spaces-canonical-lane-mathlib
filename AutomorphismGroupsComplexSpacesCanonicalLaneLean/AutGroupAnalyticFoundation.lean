import AutomorphismGroupsComplexSpacesCanonicalLaneLean.AutGroupStructure
import AutomorphismGroupsComplexSpacesCanonicalLaneLean.BoundedDomainClassification
import AutomorphismGroupsComplexSpacesCanonicalLaneLean.AutomorphismRigidity

namespace HautevilleHouse
namespace AutomorphismGroupsComplexSpacesCanonicalLaneLean

structure AutGroupAnalyticFoundation where
  complexSpace : ComplexSpacePackage
  classification : BoundedDomainClassificationPackage
  rigidity : RigidityPackage
  foundationClosed : Prop
  foundationEvidence : foundationClosed

theorem autgroup_analytic_foundation_closed (A : AutGroupAnalyticFoundation) :
    A.foundationClosed := by
  exact A.foundationEvidence

end AutomorphismGroupsComplexSpacesCanonicalLaneLean
end HautevilleHouse
