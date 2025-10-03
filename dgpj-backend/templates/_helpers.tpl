{{- define "dgpj-backend.fullname" -}}
{{ .Release.Name }}
{{- end }}

{{- define "dgpj-backend.serviceAccountName" -}}
{{ include "dgpj-backend.fullname" . }}
{{- end }}

{{- define "dgpj-backend.labels" -}}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: Helm
{{- end }}

{{- define "dgpj-backend.selectorLabels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
