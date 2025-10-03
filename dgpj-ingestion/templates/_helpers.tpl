{{- define "dgpj-ingestion.fullname" -}}
{{ .Release.Name }}
{{- end }}

{{- define "dgpj-ingestion.serviceAccountName" -}}
{{ include "dgpj-ingestion.fullname" . }}
{{- end }}

{{- define "dgpj-ingestion.labels" -}}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: Helm
{{- end }}

{{- define "dgpj-ingestion.selectorLabels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
