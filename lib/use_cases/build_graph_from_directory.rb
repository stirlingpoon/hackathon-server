#
# Active Directory is likely to remain in place due to corporate infrastructure.
# Therefore it's unlikely that the internal infra would migrate over to a GraphDB or
# other structure.
#
# We would therefore need to sync data from the ActiveDirectory into an internal GraphDB for intelligent
# Querying and traversal. This would effectively be transient data.
#
# We then can join back into our own internal data structures which can enrich each Graph node with
# statistics that we have collated separately.
#
# Unlike LinkedIn which uses various distributed Hash & Hadoop based stores.  They are the primary
# owner and source of their own analytic data.  Our use-case I believe is slightly different therefore.
# ActiveDirectory isn't the ideal profile store for creative querying of data

class BuildGraphFromDirectory

end