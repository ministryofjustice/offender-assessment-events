package uk.gov.justice.digital.hmpps.assessments_events.entity

import java.io.Serializable
import javax.persistence.Column
import javax.persistence.Entity
import javax.persistence.Id
import javax.persistence.JoinColumn
import javax.persistence.ManyToOne
import javax.persistence.Table

@Table(name = "OASYS_ASSESSMENT_GROUP")
@Entity
data class AssessmentGroup(
  @Id
  @Column(name = "OASYS_ASSESSMENT_GROUP_PK")
  val oasysAssessmentGroupPk: Long,

  @ManyToOne
  @JoinColumn(name = "OFFENDER_PK", referencedColumnName = "OFFENDER_PK")
  val offender: Offender,

) : Serializable {
  override fun equals(other: Any?): Boolean {
    if (this === other) return true
    if (other !is AssessmentGroup) return false
    return oasysAssessmentGroupPk == other.oasysAssessmentGroupPk
  }

  override fun hashCode(): Int {
    return 31
  }
}
