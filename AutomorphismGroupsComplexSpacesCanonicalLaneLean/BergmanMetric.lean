import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.AutomorphismGroupsComplexSpacesCanonicalLaneLean.ComplexSpace

namespace HautevilleHouse
namespace AutomorphismGroupsComplexSpacesCanonicalLaneLean

structure BergmanMetric (X : ComplexSpace) where
  metric : X.carrier → X.carrier → ℝ
  hermitian : Prop
  positiveDefinite : Prop
  invariantUnderAutomorphisms : Prop

structure BergmanMetricEvidence {X : ComplexSpace} (g : BergmanMetric X) where
  hermitianClosed : g.hermitian
  positiveDefiniteClosed : g.positiveDefinite
  invariantUnderAutomorphismsClosed : g.invariantUnderAutomorphisms

def BergmanMetricClosed {X : ComplexSpace} (g : BergmanMetric X) : Prop :=
  g.hermitian ∧ g.positiveDefinite ∧ g.invariantUnderAutomorphisms

theorem bergman_metric_closed_from_evidence {X : ComplexSpace} (g : BergmanMetric X) (E : BergmanMetricEvidence g) : BergmanMetricClosed g := by
  exact And.intro E.hermitianClosed (And.intro E.positiveDefiniteClosed E.invariantUnderAutomorphismsClosed)

end AutomorphismGroupsComplexSpacesCanonicalLaneLean
end HautevilleHouse