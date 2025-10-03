{{- define "dgpj-backoffice.fullname" -}}
{{ .Release.Name }}
{{- end }}

{{- define "dgpj-backoffice.serviceAccountName" -}}
{{ include "dgpj-backoffice.fullname" . }}
{{- end }}

{{- define "dgpj-backoffice.labels" -}}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: Helm
{{- end }}

{{- define "dgpj-backoffice.selectorLabels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
