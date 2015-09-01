class Employee
  # include Neo4j::ActiveNode
  #
  # id_property :directory_uid
  #
  # property :department
  # property :org_unit
  #
  # has_many :out, :coworkers, model_class: :Employee
  # has_one :in, :manager, model_class: :Employee
end