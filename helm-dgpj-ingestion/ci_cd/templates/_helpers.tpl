{{- define "helm-dgpj-backend.fullname" -}}
{{ .Release.Name }}
{{- end }}

{{- define "helm-dgpj-backend.serviceAccountName" -}}
{{ include "helm-dgpj-backend.fullname" . }}
{{- end }}

{{- define "helm-dgpj-backend.labels" -}}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion }}
app.kubernetes.io/managed-by: Helm
{{- end }}

{{- define "helm-dgpj-backend.selectorLabels" -}}
app.kubernetes.io/name: {{ .Chart.Name }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
