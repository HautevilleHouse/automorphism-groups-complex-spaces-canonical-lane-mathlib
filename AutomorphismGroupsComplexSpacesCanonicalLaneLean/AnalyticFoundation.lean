import HautevilleHouse.AutomorphismGroupsComplexSpacesCanonicalLaneLean.ComplexSpace
import HautevilleHouse.AutomorphismGroupsComplexSpacesCanonicalLaneLean.AutomorphismGroup
import HautevilleHouse.AutomorphismGroupsComplexSpacesCanonicalLaneLean.BergmanMetric
import HautevilleHouse.AutomorphismGroupsComplexSpacesCanonicalLaneLean.FixedPoint

namespace HautevilleHouse
namespace AutomorphismGroupsComplexSpacesCanonicalLaneLean

structure AnalyticFoundation where
  space : ComplexSpace
  spaceEvidence : ComplexSpaceEvidence space
  automorphismGroup : AutomorphismGroup space
  automorphismGroupEvidence : AutomorphismGroupEvidence automorphismGroup
  bergmanMetric : BergmanMetric space
  bergmanMetricEvidence : BergmanMetricEvidence bergmanMetric
  fixedPoint : FixedPoint space automorphismGroup
  fixedPointEvidence : FixedPointEvidence fixedPoint

def AnalyticFoundationClosed (A : AnalyticFoundation) : Prop :=
  ComplexSpaceClosed A.space ∧
  AutomorphismGroupClosed A.automorphismGroup ∧
  BergmanMetricClosed A.bergmanMetric ∧
  FixedPointClosed A.fixedPoint

theorem analytic_foundation_closed_from_evidence (A : AnalyticFoundation) : AnalyticFoundationClosed A := by
  exact And.intro (complex_space_closed_from_evidence A.space A.spaceEvidence)
    (And.intro (automorphism_group_closed_from_evidence A.automorphismGroup A.automorphismGroupEvidence)
      (And.intro (bergman_metric_closed_from_evidence A.bergmanMetric A.bergmanMetricEvidence)
        (fixed_point_closed_from_evidence A.fixedPoint A.fixedPointEvidence)))

end AutomorphismGroupsComplexSpacesCanonicalLaneLean
end HautevilleHouse