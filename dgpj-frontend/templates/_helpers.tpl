{{- define "dgpj-frontend.fullname" -}}
{{ .Release.Name }}
{{- end }}

{{- define "dgpj-frontend.serviceAccountName" -}}
{{ include "dgpj-frontend.fullname" . }}
{{- end }}

{{- define "dgpj-frontend.labels" -}}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: Helm
{{- end }}

{{- define "dgpj-frontend.selectorLabels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
