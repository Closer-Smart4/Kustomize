{{- define "dgpj-llm-microservice.fullname" -}}
{{ .Release.Name }}
{{- end }}

{{- define "dgpj-llm-microservice.serviceAccountName" -}}
{{ include "dgpj-llm-microservice.fullname" . }}
{{- end }}

{{- define "dgpj-llm-microservice.labels" -}}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: Helm
{{- end }}

{{- define "dgpj-llm-microservice.selectorLabels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
