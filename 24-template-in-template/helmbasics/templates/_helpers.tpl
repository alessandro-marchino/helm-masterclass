{{- define "helmbasics.resourceName" }}
{{- printf "%s-%s" .Release.Name .Chart.Name }}
{{- end }}

{{/* Common Labels */}}
{{- define "helmbasics.labels"}}
    app.kubernetes.io/managed-by: helm
    app: nginx
    chartname: {{ .Chart.Name }}
    template-in-template: {{ include "helmbasics.resourceName" . }}
{{- end }}
