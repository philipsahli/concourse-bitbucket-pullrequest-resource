function error() {
    JOB="${0}"              # job name
    LASTLINE="${1}"         # line of error occurrence
    LASTERR="${2}"          # error code
    echo "ERROR in ${JOB} : line ${LASTLINE} with exit code ${LASTERR}" >&2
    exit 1
}
trap 'error ${LINENO} ${?}' ERR


TMPDIR="${TMPDIR:-/tmp}"