class ResetHistory < ActiveRecord::Migration
  def change
    drop_table :histories
    create_table :histories do |t|
      t.string :opptyId
      t.string :opptyName
      t.string :idiqCA
      t.string :status2
      t.float :value
      t.integer :pWin
      t.string :captureMgr
      t.string :programMgr
      t.string :proposalMgr
      t.string :sslOrg
      t.string :technicalLead
      t.string :sslArch
      t.string :ed
      t.string :on
      t.string :ate
      t.string :slComments
      t.date :rfpDate
      t.date :awardDate
      t.date :submitDate
      t.boolean :done, default:false
      t.date :proposalDueDate
      t.string :slDir
      t.string :leadEstim
      t.string :engaged
      t.string :solution
      t.string :estimate
      t.string :codeName
      t.string :descriptionOfWork
      t.string :category
      t.string :pwald
      t.integer :pBid
      t.integer :awardFV
      t.integer :saicvaPercent
      t.integer :saicva
      t.integer :mat
      t.integer :materialsTV
      t.integer :subc
      t.integer :subTV
      t.integer :cg_va
      t.integer :sss_va
      t.integer :nwi_va
      t.integer :hwi_va
      t.integer :itms_va
      t.integer :tss_va
      t.integer :ccds_va
      t.integer :mss_va
      t.integer :swi_va
      t.integer :lsc_va
      t.integer :zzOth_va
      t.integer :pri
      t.string :aop
      t.string :peg
      t.string :mustWin
      t.string :feeIndic
      t.string :slutil
      t.string :recompete
      t.string :competitive
      t.string :international
      t.string :strategic
      t.string :bundle
      t.string :bidReviewStream
      t.string :definedDelivPgm
      t.string :evaluationCriteria
      t.string :perfWorkLoc
      t.string :classIfReqmt
      t.string :grouping
      t.string :reasonForWinLoss
      t.float :egr
      t.string :slCat
      t.string :slPri
      t.string :slNote
      t.date :crmRunDate
      t.date :contractStartDate
      t.string :rfpFYPer
      t.string :submitFYPer
      t.string :awardFYPer
      t.string :preBPprojID
      t.integer :fy16PreBP
      t.integer :fy16PreBPSpent
      t.integer :fy16PreBPSpentPercent
      t.string :bpProjID
      t.integer :fy16BDTot
      t.integer :fy16BDTotSpent
      t.integer :fy16BDTotSpentPercent
      t.date :financeDate
      t.string :cgSecOrg
      t.string :cgSecMgr
      t.string :cgOrg
      t.string :cgMgr
      t.string :opOrg
      t.string :cgOpMgr
      t.string :cgPgmDir
      t.string :bdMgr
      t.string :crmRecOwner
      t.string :sslMgr
      t.integer :divNum
      t.string :customer
      t.string :endCustomer
      t.integer :crn
      t.string :contractType
      t.string :opptyClass
      t.integer :numberOfAwards
      t.integer :totalPOP
      t.string :primeSub

      t.timestamps
    end
  end
end