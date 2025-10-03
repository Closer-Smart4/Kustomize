{{- define "dgpj-vectordb.fullname" -}}
{{ .Release.Name }}
{{- end }}

{{- define "dgpj-vectordb.serviceAccountName" -}}
{{ include "dgpj-vectordb.fullname" . }}
{{- end }}

{{- define "dgpj-vectordb.labels" -}}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: Helm
{{- end }}

{{- define "dgpj-vectordb.selectorLabels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
