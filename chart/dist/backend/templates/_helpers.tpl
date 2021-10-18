{{/*
# Define the backend name separately so that it can be changed easily
# Note: This name has global scope. make it unique qith prefix = "backend"
# Backend name example:
#{{ .Release.Name }}-{{ .Chart.Name }}
*/}}
{{- define "backend.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
