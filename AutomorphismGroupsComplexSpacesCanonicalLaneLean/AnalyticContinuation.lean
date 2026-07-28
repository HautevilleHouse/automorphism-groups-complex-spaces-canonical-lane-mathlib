import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AutomorphismGroupsComplexSpacesCanonicalLaneLean

structure AnalyticContinuationPackage where
  sourceDomain : ComplexDomain
  targetDomain : ComplexDomain
  function : sourceDomain.carrier → ℂ
  analytic : AnalyticOn function sourceDomain.carrier
  continuation : targetDomain.carrier → ℂ
  continuationAnalytic : AnalyticOn continuation targetDomain.carrier
  agreementOnOverlap : ∀ z ∈ sourceDomain.carrier ∩ targetDomain.carrier, function z = continuation z

structure AnalyticContinuationEvidence (A : AnalyticContinuationPackage) where
  sourceAnalytic : A.analytic
  targetAnalytic : A.continuationAnalytic
  agreement : A.agreementOnOverlap

def AnalyticContinuationClosed (A : AnalyticContinuationPackage) : Prop :=
  A.analytic ∧ A.continuationAnalytic ∧ A.agreementOnOverlap

theorem analytic_continuation_closed_from_evidence (A : AnalyticContinuationPackage)
  (E : AnalyticContinuationEvidence A) : AnalyticContinuationClosed A :=
by
  exact And.intro E.sourceAnalytic (And.intro E.targetAnalytic E.agreement)

end AutomorphismGroupsComplexSpacesCanonicalLaneLean
end HautevilleHouse